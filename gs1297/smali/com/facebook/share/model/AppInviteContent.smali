.class public final Lcom/facebook/share/model/AppInviteContent;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/AppInviteContent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/AppInviteContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applinkUrl:Ljava/lang/String;

.field private final previewImageUrl:Ljava/lang/String;

.field private final promoCode:Ljava/lang/String;

.field private final promoText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/AppInviteContent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    # getter for: Lcom/facebook/share/model/AppInviteContent$Builder;->applinkUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$000(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    .line 37
    # getter for: Lcom/facebook/share/model/AppInviteContent$Builder;->previewImageUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$100(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    .line 38
    # getter for: Lcom/facebook/share/model/AppInviteContent$Builder;->promoCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$200(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    .line 39
    # getter for: Lcom/facebook/share/model/AppInviteContent$Builder;->promoText:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$300(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/AppInviteContent$Builder;Lcom/facebook/share/model/AppInviteContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/AppInviteContent$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcom/facebook/share/model/AppInviteContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getApplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
