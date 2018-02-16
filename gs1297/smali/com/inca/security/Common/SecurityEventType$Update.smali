.class public Lcom/inca/security/Common/SecurityEventType$Update;
.super Ljava/lang/Object;
.source "SecurityEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Common/SecurityEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation


# static fields
.field public static final STATE_NON_UPDATABLE:I = 0x1

.field public static final STATE_UPDATABLE:I


# instance fields
.field final synthetic this$0:Lcom/inca/security/Common/SecurityEventType;


# direct methods
.method public constructor <init>(Lcom/inca/security/Common/SecurityEventType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/inca/security/Common/SecurityEventType;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/inca/security/Common/SecurityEventType$Update;->this$0:Lcom/inca/security/Common/SecurityEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
