.class public Lcom/inca/security/Common/SecurityEventType$Event;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Event"
.end annotation


# static fields
.field public static final ENGINE_INITIALIZED:I = 0x1

.field public static final ENGINE_RESET:I = 0x3

.field public static final ENGINE_START:I = 0x0

.field public static final ENGINE_STOP:I = 0x2

.field public static final S2AUTH_CALLBACK:I = 0x14

.field public static final UPDATE_CHECK:I = 0x9

.field public static final UPDATE_COMPLETE:I = 0x6

.field public static final UPDATE_DELAYED:I = 0xb

.field public static final UPDATE_DOWNLOAD:I = 0x7

.field public static final UPDATE_DOWNLOADING:I = 0x8

.field public static final UPDATE_FAIL:I = 0xa

.field public static final UPDATE_START:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventType;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventType;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventType$Event;->this$0:Lcom/inca/security/Common/SecurityEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
