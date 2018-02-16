.class final Lextern/okhttp3/CookieJar$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lextern/okhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lextern/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveFromResponse(Lextern/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    return-void
.end method
