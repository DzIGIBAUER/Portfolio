
<section class="content-container" id={title.toLowerCase()}>
    <h4 class="title mdc-typography--headline4">{title}</h4>
    <slot></slot>
</section>



<script lang="ts">
    import { onMount } from "svelte";

    onMount(() => {
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