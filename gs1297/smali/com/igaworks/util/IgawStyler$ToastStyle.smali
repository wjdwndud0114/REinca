.class public Lcom/igaworks/util/IgawStyler$ToastStyle;
.super Ljava/lang/Object;
.source "IgawStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/util/IgawStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastStyle"
.end annotation


# instance fields
.field public alpha:I

.field public popup_message_height:I

.field public positionX:I

.field public positionY:I

.field public title_gravity:I

.field public toastIconImage:I

.field public toast_duration:I

.field public toast_width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toastIconImage:I

    .line 9
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionX:I

    .line 10
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->positionY:I

    .line 11
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_width:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->alpha:I

    .line 13
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->toast_duration:I

    .line 14
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->title_gravity:I

    .line 15
    iput v1, p0, Lcom/igaworks/util/IgawStyler$ToastStyle;->popup_message_height:I

    return-void
.end method
