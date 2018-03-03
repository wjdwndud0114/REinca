.class public interface abstract Lextern/okhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lextern/okhttp3/internal/http2/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lextern/okhttp3/internal/http2/PushObserver$1;

    invoke-direct {v0}, Lextern/okhttp3/internal/http2/PushObserver$1;-><init>()V

    sput-object v0, Lextern/okhttp3/internal/http2/PushObserver;->CANCEL:Lextern/okhttp3/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILextern/okio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILextern/okhttp3/internal/http2/ErrorCode;)V
.end method
