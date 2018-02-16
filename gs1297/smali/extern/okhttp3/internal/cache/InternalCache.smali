.class public interface abstract Lextern/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lextern/okhttp3/Response;)Lextern/okhttp3/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lextern/okhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lextern/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)V
.end method
