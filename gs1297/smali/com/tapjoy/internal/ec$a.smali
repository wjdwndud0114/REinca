.class public final Lcom/tapjoy/internal/ec$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ec;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tapjoy/internal/ec$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ec$a;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/ec$a;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tapjoy/internal/ec$a;->d:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tapjoy/internal/ds;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lcom/tapjoy/internal/ec;

    iget-object v1, p0, Lcom/tapjoy/internal/ec$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ec$a;->d:Ljava/lang/Long;

    invoke-super {p0}, Lcom/tapjoy/internal/dl$a;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/ec;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/tapjoy/internal/hu;)V

    return-object v0
.end method
