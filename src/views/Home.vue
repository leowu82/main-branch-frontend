<template>
    <div>
        <h1>My Articles</h1>
        <AddArticle @add-article="addArticle" />
        <div v-if="articles.length">
            <Article v-for="article in articles" :key="article.id" :article="article" @delete-article="deleteArticle" />
        </div>
        <div v-else>
            <p>No articles available.</p>
        </div>
    </div>
</template>
  
<script>
import Article from '../components/Article.vue';
import AddArticle from '../components/AddArticle.vue';

export default {
    name: 'Home',
    components: {
        Article,
        AddArticle
    },
    methods: {
        addArticle(newArticle) {
            this.articles.push(newArticle);
        },
        deleteArticle(articleId) {
            this.articles = this.articles.filter(article => article.id !== articleId);
        }
    }
};
</script>
  
<style>
/* Add your styles here */
</style>