.class public final Lcom/tapjoy/internal/dx$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 141
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/dx;
    .locals 7

    .prologue
    .line 170
    new-instance v0, Lcom/tapjoy/internal/dx;

    iget-object v1, p0, Lcom/tapjoy/internal/dx$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/dx$a;->d:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/internal/dx$a;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/dx$a;->g:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/dl$a;->a()Lcom/tapjoy/internal/hu;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/dx;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V

    return-object v0
.end method
