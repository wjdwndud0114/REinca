.class public Lcom/tnkfactory/ad/TnkAdFooterLayout;
.super Ljava/lang/Object;


# instance fields
.field public idContact:I

.field public idHelpdesk:I

.field public idPrivacy:I

.field public layout:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->layout:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idHelpdesk:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idPrivacy:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idContact:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idHelpdesk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idPrivacy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idContact:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->layout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idHelpdesk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idPrivacy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->idContact:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdFooterLayout;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
