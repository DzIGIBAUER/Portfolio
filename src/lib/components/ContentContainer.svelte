
<section class="content-container" id={title.toLowerCase()}>
    <AnimateIntoView once>
        <h4 class="title mdc-typography--headline4">{title}</h4>
    </AnimateIntoView>
    <slot></slot>
</section>



<script lang="ts">
    import { onMount } from "svelte";

    import AnimateIntoView from "$lib/components/AnimateIntoView.svelte";

    onMount(() => {
        if (!window.location.hash) return;
        
        const element = document.querySelector(window.location.hash) as HTMLElement;
        if (!element) return;
        
        element.scrollIntoView({
            behavior: "smooth"
        });
    });

    export let title: string;
</script>

<style>
    .title {
        text-align: center;
        color: var(--mdc-theme-text-primary-on-background);
    }

    .content-container {
        padding: 20px;
    }
</style>