.class public Lcom/inca/security/ac;
.super Ljava/lang/Object;
.source "fb"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static synthetic IIIiiiiIII:I

.field public static synthetic IiIiIIIiIi:I


# instance fields
.field private synthetic IIIIiiIiII:J

.field private synthetic IiIiIiiIii:J

.field private synthetic IiiIiiiIiI:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/inca/security/ac;->IiIiIIIiIi:I

    .line 99
    const/4 v0, 0x1

    sput v0, Lcom/inca/security/ac;->IIIiiiiIII:I

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 3
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J
    .param p5, "arg2"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-wide p1, p0, Lcom/inca/security/ac;->IiIiIiiIii:J

    .line 94
    iput-wide p3, p0, Lcom/inca/security/ac;->IIIIiiIiII:J

    .line 72
    int-to-long v0, p5

    iput-wide v0, p0, Lcom/inca/security/ac;->IiiIiiiIiI:J

    .line 30
    return-void
.end method


# virtual methods
.method public IIiIIiIiIi()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/inca/security/ac;->IiIiIiiIii:J

    return-wide v0
.end method

.method public IiIiiIiiII()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/inca/security/ac;->IiiIiiiIiI:J

    return-wide v0
.end method

.method public IiiiIIIIii()J
    .locals 4

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/inca/security/ac;->IIIIiiIiII:J

    iget-wide v2, p0, Lcom/inca/security/ac;->IiIiIiiIii:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public iIiIIiIIIi()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/inca/security/ac;->IIIIiiIiII:J

    return-wide v0
.end method
