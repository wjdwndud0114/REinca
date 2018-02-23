.class public Lcom/inca/security/Tracker/UserActionTracker$BeAction;
.super Ljava/lang/Object;
.source "ia"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Tracker/UserActionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeAction"
.end annotation


# instance fields
.field public final synthetic IIIIiiIiII:I

.field public final synthetic IiIiIiiIii:I

.field public final synthetic IiiIiiiIiI:Lcom/inca/security/Tracker/UserActionTracker;


# direct methods
.method public constructor <init>(Lcom/inca/security/Tracker/UserActionTracker;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/Tracker/UserActionTracker;

    .prologue
    .line 271
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/inca/security/Tracker/UserActionTracker$BeAction;->IiiIiiiIiI:Lcom/inca/security/Tracker/UserActionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput v1, p0, Lcom/inca/security/Tracker/UserActionTracker$BeAction;->IIIIiiIiII:I

    .line 231
    iput v0, p0, Lcom/inca/security/Tracker/UserActionTracker$BeAction;->IiIiIiiIii:I

    return-void
.end method
