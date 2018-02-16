.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$16;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setTitleAndAdSlideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$16;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$16;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setSlideImageSection()V

    .line 889
    return-void
.end method
