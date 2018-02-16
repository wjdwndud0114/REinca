.class public final Lcom/tapjoy/internal/ee$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/ed;

.field public d:Lcom/tapjoy/internal/dx;

.field public e:Lcom/tapjoy/internal/ek;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ee;
    .locals 5

    .prologue
    .line 123
    new-instance v0, Lcom/tapjoy/internal/ee;

    iget-object v1, p0, Lcom/tapjoy/internal/ee$a;->c:Lcom/tapjoy/internal/ed;

    iget-object v2, p0, Lcom/tapjoy/internal/ee$a;->d:Lcom/tapjoy/internal/dx;

    iget-object v3, p0, Lcom/tapjoy/internal/ee$a;->e:Lcom/tapjoy/internal/ek;

    invoke-super {p0}, Lcom/tapjoy/internal/dl$a;->a()Lcom/tapjoy/internal/hu;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/ee;-><init>(Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/hu;)V

    return-object v0
.end method
