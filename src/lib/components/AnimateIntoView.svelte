
<div bind:this={container} class="container" style={_startStyle}>
    <slot />
</div>


<script lang="ts">
    import { onMount } from "svelte";

    export let once: boolean = false;
    export let startStyle: string = "";
    $: _startStyle = startStyle;

    interface IAnimatedElements {
        [key: string]: {
            once: boolean
        }
    };

    const animatedElements: IAnimatedElements = {};

    let container: HTMLElement;


    onMount(() => {

        const observer = new IntersectionObserver((entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    console.log(entry.target);
                    entry.target.classList.add("slide-in");
                    _startStyle = "";

                } else {
                    if (!animatedElements[entry.target.toString()].once) {
                        entry.target.classList.remove("slide-in");
                        _startStyle = startStyle;
                    }
                }
            });
        });

        for (const child of container.children) {
            observer.observe(child);
            child.classList.add("hidden", "inherit-anim-style");
            animatedElements[child.toString()] = {once: once};
        };
    });

</script>


<style>
    
    .container {
        display: contents;
    }

    :global(.inherit-anim-style) {
        transform: inherit;
    }

    :global(.hidden) {
        opacity: 0;
    }

    :global(.slide-in) {
        transition: 1s;
        opacity: 1;
    }

</style>
