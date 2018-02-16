.class public interface abstract Lextern/okhttp3/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# virtual methods
.method public abstract onFailure(Lextern/okhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lextern/okhttp3/Call;Lextern/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
