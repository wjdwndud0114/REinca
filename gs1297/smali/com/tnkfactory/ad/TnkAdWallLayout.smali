.class public Lcom/tnkfactory/ad/TnkAdWallLayout;
.super Ljava/lang/Object;


# instance fields
.field public detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

.field public footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

.field public header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

.field public iconType:I

.field public idClose:I

.field public idEmptySign:I

.field public idHelpdesk:I

.field public idList:I

.field public idPrivacy:I

.field public idTitle:I

.field public item:Lcom/tnkfactory/ad/TnkAdItemLayout;

.field public layout:I

.field public numColumnsLandscape:I

.field public numColumnsLandscapeTablet:I

.field public numColumnsPortrait:I

.field public numColumnsPortraitTablet:I

.field public showFooter:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortrait:I

    iput v3, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscape:I

    iput v3, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortraitTablet:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscapeTablet:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idTitle:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idList:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idClose:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idHelpdesk:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idPrivacy:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idEmptySign:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdItemLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdItemLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdDetailLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdDetailLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdHeaderLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdFooterLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdFooterLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortrait:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscape:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortraitTablet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscapeTablet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idTitle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idList:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idClose:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idHelpdesk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idPrivacy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idEmptySign:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    new-instance v2, Lcom/tnkfactory/ad/TnkAdItemLayout;

    invoke-direct {v2, p1}, Lcom/tnkfactory/ad/TnkAdItemLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    new-instance v2, Lcom/tnkfactory/ad/TnkAdDetailLayout;

    invoke-direct {v2, p1}, Lcom/tnkfactory/ad/TnkAdDetailLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    new-instance v2, Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    invoke-direct {v2, p1}, Lcom/tnkfactory/ad/TnkAdHeaderLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    new-instance v2, Lcom/tnkfactory/ad/TnkAdFooterLayout;

    invoke-direct {v2, p1}, Lcom/tnkfactory/ad/TnkAdFooterLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortrait:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscape:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsPortraitTablet:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->numColumnsLandscapeTablet:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idTitle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idList:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idClose:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idHelpdesk:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idPrivacy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->idEmptySign:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->iconType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->item:Lcom/tnkfactory/ad/TnkAdItemLayout;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdItemLayout;->a(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->detail:Lcom/tnkfactory/ad/TnkAdDetailLayout;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdDetailLayout;->a(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->header:Lcom/tnkfactory/ad/TnkAdHeaderLayout;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->a(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->footer:Lcom/tnkfactory/ad/TnkAdFooterLayout;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdFooterLayout;->a(Landroid/os/Parcel;I)V

    iget-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdWallLayout;->showFooter:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
