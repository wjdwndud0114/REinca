.class public final Lcom/tapjoy/internal/ef$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ef;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcom/tapjoy/internal/ef;

    iget-object v1, p0, Lcom/tapjoy/internal/ef$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ef$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ef$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/dl$a;->a()Lcom/tapjoy/internal/hu;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V

    return-object v0
.end method
