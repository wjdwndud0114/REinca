.class public Lcom/igaworks/impl/SessionTrackingIntegration$ValidState;
.super Ljava/lang/Object;
.source "SessionTrackingIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/impl/SessionTrackingIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidState"
.end annotation


# static fields
.field public static final VALID:I


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/SessionTrackingIntegration;


# direct methods
.method public constructor <init>(Lcom/igaworks/impl/SessionTrackingIntegration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/SessionTrackingIntegration;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/igaworks/impl/SessionTrackingIntegration$ValidState;->this$0:Lcom/igaworks/impl/SessionTrackingIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
