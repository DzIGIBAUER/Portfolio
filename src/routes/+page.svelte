

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
                {title: "Languages", entries: ["Python", "JavaScript/TypeScript", "C#", "Lua", "GDScript", "G-Code"]},
                {title: "Backend frameworks", entries: ["Django"]},
                {title: "Frontend frameworks", entries: ["React", "Svelte"]},
                {title: "Databases", entries: ["MySQL"]}
            ]}
        />

        <KnowledgeInfo />
        
    </ContentContainer>

    <ContentContainer title="Projects">
        <ProjectsInfo />
    </ContentContainer>

    <ContentContainer title="Contact">
        <ContactInfo
            email="milosh2255@gmail.com"
            additionalContacts={[
                {
                    platform: "Youtube",
                    url: new URL("https://www.youtube.com/channel/UCPf-EY4-g7p2J6A4sl8gf9A"),
                    description: "My youtube channel",
                    icon: "youtube.png"
                }, {
                    platform: "Discord",
                    description: "My discord handle: eMyx#0300",
                    icon: "discord.png"
                }, {
                    platform: "Github",
                    url: new URL("https://github.com/DzIGIBAUER"),
                    description: "My github profile",
                    icon: "github.png"
                }
            ]}
        />
    </ContentContainer>

</div>


<script lang="ts">
    import Intro from "$lib/components/Intro.svelte";

    import ContentContainer from "$lib/components/ContentContainer.svelte";
    import InlineList from "$lib/components/InlineList.svelte";

    import KnowledgeInfo from "$lib/components/KnowledgeInfo.svelte";
    import ProjectsInfo from "$lib/components/ProjectsInfo.svelte";
    import ContactInfo from "$lib/components/ContactInfo.svelte";
    import BehindTheScenes from "$lib/components/BehindTheScenes.svelte";
</script>

<style lang="scss">

    .behind-the-scenes-container {
        height: 1500px;
    }

</style>