.class public Lcom/inca/security/Common/SecurityEventType$S2Auth;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "S2Auth"
.end annotation


# static fields
.field public static final S2AUTH_OPTION_DEFAULT_TIMEOUT:I = 0xb4

.field public static final S2AUTH_RESULT_FAIL:I = 0x3

.field public static final S2AUTH_RESULT_RETRY:I = 0x2

.field public static final S2AUTH_RESULT_SUCCESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventType;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventType;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventType$S2Auth;->this$0:Lcom/inca/security/Common/SecurityEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
