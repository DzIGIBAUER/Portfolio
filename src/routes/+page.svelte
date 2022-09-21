

<div class="main-cintent">
    <Intro />
    <div class="knowledge-container">
        <LayoutGrid>

            <Cell spanDevices={{ desktop: 6, phone: 12 }}>
                <KnowledgeDetails
                    title="Django"
                    content="
                    Ja znam django i tako to oooaodaodau auifnrui
                    "
                    image="https://static.djangoproject.com/img/icon-touch.e4872c4da341.png"
                    elevationClass="django"
                />
            </Cell>

        </LayoutGrid>
    </div>
    <BehindTheScenes></BehindTheScenes>
</div>


<script lang="ts">
    import Intro from "$lib/components/Intro.svelte";
    import KnowledgeDetails from "$lib/components/KnowledgeDetails.svelte";
    import BehindTheScenes from "$lib/components/BehindTheScenes.svelte";
    import LayoutGrid, { Cell } from "@smui/layout-grid";
</script>

<style>
    
    .knowledge-container {
        padding: 5em 0;
    }

    .main-cintent {
        height: 5000px;
    }

</style>