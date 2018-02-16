.class public abstract Lcom/tapjoy/internal/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field h:J

.field i:Z

.field public j:Lcom/tapjoy/internal/fs;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
