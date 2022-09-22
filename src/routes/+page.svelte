

<div class="main-content">
    <div class="intro-container">
        <Intro />
    </div>

    <div class="behind-the-scenes-container">
        <BehindTheScenes />
    </div>

    <ContentContainer title="Knowledge">

        <InlineList
            listObject={[
                {title: "Languages", entries: ["Python", "JavaScript/TypeScript", "C#", "Lua", "GDScript"]},
                {title: "Backend frameworks", entries: ["Django"]},
                {title: "Frontend frameworks", entries: ["React", "Svelte"]},
                {title: "Databases", entries: ["MySQL"]}
            ]}
        />

        <KnowledgeInfo />
        
    </ContentContainer>

</div>


<script lang="ts">
    import Intro from "$lib/components/Intro.svelte";

    import ContentContainer from "$lib/components/ContentContainer.svelte";
    import InlineList from "$lib/components/InlineList.svelte";

    import KnowledgeInfo from "$lib/components/KnowledgeInfo.svelte";
    import BehindTheScenes from "$lib/components/BehindTheScenes.svelte";

    import knowledgeData from "$lib/knowledgeInfo";
</script>

<style lang="scss">
    
    .knowledge-container {
        padding: 5em 0;
        
    }

    .behind-the-scenes-container {
        height: 1500px;
    }
    
    .tech-stack-container {
        padding: 20px;
    }

</style>