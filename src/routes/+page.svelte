

<div class="main-content">
    <div class="intro-container">
        <Intro />
    </div>

    <div class="behind-the-scenes-container">
        <BehindTheScenes />
    </div>

    <div class="knowledge-container">
        <LayoutGrid>

            {#each knowledgeData as data}

                <Cell spanDevices={{ desktop: 6, phone: 12}} style="padding: 10px">
                    <KnowledgeDetails {...data} />
                </Cell>

            {/each}

        </LayoutGrid>
    </div>

</div>


<script lang="ts">
    import Intro from "$lib/components/Intro.svelte";
    import KnowledgeDetails from "$lib/components/KnowledgeDetails.svelte";
    import BehindTheScenes from "$lib/components/BehindTheScenes.svelte";
    import LayoutGrid, { Cell } from "@smui/layout-grid";

    import knowledgeData from "$lib/knowledgeInfo";
</script>

<style lang="scss">
    
    .knowledge-container {
        padding: 5em 0;
        
    }

    .behind-the-scenes-container {
        height: 3000px;
    }

</style>