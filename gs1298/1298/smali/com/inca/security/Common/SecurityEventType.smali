.class public Lcom/inca/security/Common/SecurityEventType;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/Common/SecurityEventType$Update;,
        Lcom/inca/security/Common/SecurityEventType$Detect;,
        Lcom/inca/security/Common/SecurityEventType$Error;,
        Lcom/inca/security/Common/SecurityEventType$Event;
    }
.end annotation


# static fields
.field public static final DETECT:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final EVENT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsCriticalLevelDectection(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x1

    .line 94
    if-lt p0, v0, :cond_0

    const/16 v1, 0x1f

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x23

    if-ne p0, v1, :cond_2

    .line 98
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
