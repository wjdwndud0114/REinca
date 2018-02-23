.class public Lcom/tnkfactory/ad/TnkAdWallStyle;
.super Lcom/tnkfactory/ad/TnkStyle;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public CloseButton:Lcom/tnkfactory/ad/TnkStyle;

.field public Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

.field public Footer:Lcom/tnkfactory/ad/TnkStyle;

.field public Header:Lcom/tnkfactory/ad/TnkStyle;

.field public Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

.field public Section:Lcom/tnkfactory/ad/TnkStyle;

.field public dividerColor:I

.field public dividerHeight:I

.field public enableCurrencyFormat:Z

.field public iconType:I

.field public showCloseButton:Z

.field public showFooter:Z

.field public showProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ie;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ie;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x0

    const v3, -0xfefeff

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iput v4, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showProgress:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0x10

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iput v3, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0x28

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iput v5, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0x79797a

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0x22

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput v5, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput v3, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdItemStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdItemStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdDetailStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdDetailStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerHeight:I

    const v0, -0x2f2f30

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerColor:I

    iput v4, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showProgress:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showProgress:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdItemStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdItemStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdItemStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdDetailStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdDetailStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showProgress:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, v2}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Header:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Section:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Item:Lcom/tnkfactory/ad/TnkAdItemStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkAdItemStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->Detail:Lcom/tnkfactory/ad/TnkAdDetailStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkAdDetailStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->CloseButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->dividerColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->iconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showFooter:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showProgress:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->showCloseButton:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
