
<section class="content-container" id={title.toLowerCase()}>
    <h1 class="mdc-typography--headline1">{title}</h1>
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
    h1 {
        text-decoration: underline;
        color: var(--mdc-theme-text-primary-on-background);
    }

    .content-container {
        padding: 20px;
    }
</style>