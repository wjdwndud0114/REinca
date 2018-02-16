.class public Lcom/tapjoy/internal/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ai$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    .line 33
    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final b()Lcom/tapjoy/internal/ai;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 42
    return-object p0
.end method
