.class final Lextern/okhttp3/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lextern/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lextern/okhttp3/Route;Lextern/okhttp3/Response;)Lextern/okhttp3/Request;
    .locals 1
    .param p1, "route"    # Lextern/okhttp3/Route;
    .param p2, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
