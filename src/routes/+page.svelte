

<div class="main-content">
    <div class="intro-container">
        <Intro />
    </div>

    <div class="behind-the-scenes-container">
        <BehindTheScenes />
    </div>

    <!-- separate component? -->
    <div class="knowledge-container">
        <LayoutGrid>

            <Cell spanDevices={{ desktop: 6, phone: 12 }} style="padding: 10px">
                <KnowledgeDetails
                    title="Django"
                    content="
                    Ja znam django i tako to oooaodaodau auifnrui
                    "
                    logo="/Portfolio/django.png"
                    elevationClass="django"
                    imageStyle="border-radius: 50%"
                />
            </Cell>

            <Cell spanDevices={{ desktop: 6, phone: 12 }} style="padding: 10px">
                <KnowledgeDetails
                    content="
                    Ja znam django rest framework i tako to oooaodaodau auifnrui
                    "
                    banner="/Portfolio/django-rest-framework.png"
                    elevationClass="django-rest-framework"
                />
            </Cell>

            <Cell spanDevices={{ desktop: 6, phone: 12 }} style="padding: 10px">
                <KnowledgeDetails
                    title="Godot"
                    content="
                    Ja znam Godot Game Engine i tako to oooaodaodau auifnrui
                    "
                    logo="/Portfolio/godot.png"
                    elevationClass="godot"
                    imageStyle="border-radius: 50%"
                />
            </Cell>

        </LayoutGrid>
    </div>

</div>


<script lang="ts">
    import Intro from "$lib/components/Intro.svelte";
    import KnowledgeDetails from "$lib/components/KnowledgeDetails.svelte";
    import BehindTheScenes from "$lib/components/BehindTheScenes.svelte";
    import LayoutGrid, { Cell } from "@smui/layout-grid";
</script>

<style lang="scss">
    
    .knowledge-container {
        padding: 5em 0;
        
    }

    .behind-the-scenes-container {
        height: 3000px;
    }

</style>