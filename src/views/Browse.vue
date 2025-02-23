<template>
    <div>
        <h1>Browse Articles</h1>
        <div v-if="articles.length">
            <Article v-for="article in articles" :key="article.id" :article="article" />
        </div>
        <div v-else>
            <p>No articles available.</p>
        </div>
    </div>
</template>

<script>
import Article from '../components/Article.vue';

export default {
    name: 'Browse',
    components: {
        Article
    },
    data() {
        return {
            articles: [
                { id: 1, title: 'Article 1', content: 'Content of article 1 ...' },
                { id: 2, title: 'Article 2', content: 'Content of article 2 ...' },
                { id: 3, title: 'Article 3', content: 'Content of article 3 ...' }
            ]
        };
    }
};
</script>

<style>
/* Add your styles here */
</style>