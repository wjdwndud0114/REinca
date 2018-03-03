.class public Lcom/igaworks/impl/SessionTrackingIntegration;
.super Ljava/lang/Object;
.source "SessionTrackingIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/impl/SessionTrackingIntegration$InputValue;,
        Lcom/igaworks/impl/SessionTrackingIntegration$ValidState;
    }
.end annotation


# static fields
.field private static pre_EndSession:I

.field private static pre_StartSession:I


# instance fields
.field public EndSession:I

.field public StartSession:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput v0, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_StartSession:I

    .line 11
    sput v0, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_EndSession:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "startSession"    # I
    .param p2, "endSession"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    .line 34
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "SessionTrackingIntegration: Invalid object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput v2, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->StartSession:I

    .line 36
    iput v2, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->EndSession:I

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_1
    iput p1, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->StartSession:I

    .line 39
    iput p2, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->EndSession:I

    goto :goto_0
.end method

.method private scalarProduct(Lcom/igaworks/impl/SessionTrackingIntegration;)I
    .locals 3
    .param p1, "currentValue"    # Lcom/igaworks/impl/SessionTrackingIntegration;

    .prologue
    .line 56
    sget v0, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_StartSession:I

    iget v1, p1, Lcom/igaworks/impl/SessionTrackingIntegration;->StartSession:I

    mul-int/2addr v0, v1

    sget v1, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_EndSession:I

    iget v2, p1, Lcom/igaworks/impl/SessionTrackingIntegration;->EndSession:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public validSessionIntegration()Z
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "isValid":Z
    sget v2, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_StartSession:I

    if-nez v2, :cond_0

    sget v2, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_EndSession:I

    if-nez v2, :cond_0

    .line 45
    const/4 v1, 0x1

    .line 51
    :goto_0
    iget v2, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->StartSession:I

    sput v2, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_StartSession:I

    .line 52
    iget v2, p0, Lcom/igaworks/impl/SessionTrackingIntegration;->EndSession:I

    sput v2, Lcom/igaworks/impl/SessionTrackingIntegration;->pre_EndSession:I

    .line 53
    return v1

    .line 47
    :cond_0
    invoke-direct {p0, p0}, Lcom/igaworks/impl/SessionTrackingIntegration;->scalarProduct(Lcom/igaworks/impl/SessionTrackingIntegration;)I

    move-result v0

    .line 48
    .local v0, "dotProduct":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
