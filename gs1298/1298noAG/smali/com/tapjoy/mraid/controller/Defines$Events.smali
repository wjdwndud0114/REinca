.class public Lcom/tapjoy/mraid/controller/Defines$Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Events"
.end annotation


# static fields
.field public static final HEADING_CHANGE:Ljava/lang/String; = "headingChange"

.field public static final KEYBOARD_CHANGE:Ljava/lang/String; = "keyboardChange"

.field public static final LOCATION_CHANGE:Ljava/lang/String; = "locationChange"

.field public static final NETWORK_CHANGE:Ljava/lang/String; = "networkChange"

.field public static final ORIENTATION_CHANGE:Ljava/lang/String; = "orientationChange"

.field public static final SCREEN_CHANGE:Ljava/lang/String; = "screenChange"

.field public static final SHAKE:Ljava/lang/String; = "shake"

.field public static final SIZE_CHANGE:Ljava/lang/String; = "sizeChange"

.field public static final STATE_CHANGE:Ljava/lang/String; = "stateChange"

.field public static final TILT_CHANGE:Ljava/lang/String; = "tiltChange"


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/controller/Defines;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/controller/Defines;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tapjoy/mraid/controller/Defines;

    .prologue
    .line 5
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Defines$Events;->a:Lcom/tapjoy/mraid/controller/Defines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
