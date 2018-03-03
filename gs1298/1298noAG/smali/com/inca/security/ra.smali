.class public Lcom/inca/security/ra;
.super Ljava/lang/Object;
.source "za"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ha;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IIIIiiIiII:Lcom/inca/security/ea;

.field public synthetic IiIiIiiIii:I


# direct methods
.method public constructor <init>(Lcom/inca/security/ea;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/ea;

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inca/security/ra;->IIIIiiIiII:Lcom/inca/security/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lcom/inca/security/ra;->IiIiIiiIii:I

    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 5
    .param p1, "arg0"    # J
    .param p3, "arg1"    # I
    .param p4, "arg2"    # J

    .prologue
    .line 325
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 379
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p4

    long-to-int v1, v2

    .line 434
    iget v2, p0, Lcom/inca/security/ra;->IiIiIiiIii:I

    if-eq v2, v1, :cond_0

    .line 432
    invoke-static {v1, v0}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 207
    iget-object v2, p0, Lcom/inca/security/ra;->IIIIiiIiII:Lcom/inca/security/ea;

    iget-object v2, v2, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4, v0}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 383
    iput v1, p0, Lcom/inca/security/ra;->IiIiIiiIii:I

    .line 355
    :cond_0
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
