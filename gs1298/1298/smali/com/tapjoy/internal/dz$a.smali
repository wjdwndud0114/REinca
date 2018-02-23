.class public final Lcom/tapjoy/internal/dz$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 80
    invoke-static {}, Lcom/tapjoy/internal/ds;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dz$a;->c:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/dz;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/tapjoy/internal/dz;

    iget-object v1, p0, Lcom/tapjoy/internal/dz$a;->c:Ljava/util/List;

    invoke-super {p0}, Lcom/tapjoy/internal/dl$a;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/dz;-><init>(Ljava/util/List;Lcom/tapjoy/internal/hu;)V

    return-object v0
.end method
