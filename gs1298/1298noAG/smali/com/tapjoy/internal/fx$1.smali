.class final Lcom/tapjoy/internal/fx$1;
.super Lcom/tapjoy/internal/hm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fx;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-direct {p0}, Lcom/tapjoy/internal/hm;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    .line 1021
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/gl;

    .line 204
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
