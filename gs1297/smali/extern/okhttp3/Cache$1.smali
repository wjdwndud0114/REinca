.class Lextern/okhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lextern/okhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/Cache;


# direct methods
.method constructor <init>(Lextern/okhttp3/Cache;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;
    .locals 1
    .param p1, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lextern/okhttp3/Cache;->get(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lextern/okhttp3/Response;)Lextern/okhttp3/internal/cache/CacheRequest;
    .locals 1
    .param p1, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    # invokes: Lextern/okhttp3/Cache;->put(Lextern/okhttp3/Response;)Lextern/okhttp3/internal/cache/CacheRequest;
    invoke-static {v0, p1}, Lextern/okhttp3/Cache;->access$000(Lextern/okhttp3/Cache;Lextern/okhttp3/Response;)Lextern/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lextern/okhttp3/Request;)V
    .locals 1
    .param p1, "request"    # Lextern/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    # invokes: Lextern/okhttp3/Cache;->remove(Lextern/okhttp3/Request;)V
    invoke-static {v0, p1}, Lextern/okhttp3/Cache;->access$100(Lextern/okhttp3/Cache;Lextern/okhttp3/Request;)V

    .line 154
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    # invokes: Lextern/okhttp3/Cache;->trackConditionalCacheHit()V
    invoke-static {v0}, Lextern/okhttp3/Cache;->access$300(Lextern/okhttp3/Cache;)V

    .line 162
    return-void
.end method

.method public trackResponse(Lextern/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lextern/okhttp3/internal/cache/CacheStrategy;

    .prologue
    .line 165
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    # invokes: Lextern/okhttp3/Cache;->trackResponse(Lextern/okhttp3/internal/cache/CacheStrategy;)V
    invoke-static {v0, p1}, Lextern/okhttp3/Cache;->access$400(Lextern/okhttp3/Cache;Lextern/okhttp3/internal/cache/CacheStrategy;)V

    .line 166
    return-void
.end method

.method public update(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)V
    .locals 1
    .param p1, "cached"    # Lextern/okhttp3/Response;
    .param p2, "network"    # Lextern/okhttp3/Response;

    .prologue
    .line 157
    iget-object v0, p0, Lextern/okhttp3/Cache$1;->this$0:Lextern/okhttp3/Cache;

    # invokes: Lextern/okhttp3/Cache;->update(Lextern/okhttp3/Response;Lextern/okhttp3/Response;)V
    invoke-static {v0, p1, p2}, Lextern/okhttp3/Cache;->access$200(Lextern/okhttp3/Cache;Lextern/okhttp3/Response;Lextern/okhttp3/Response;)V

    .line 158
    return-void
.end method
