.class public Lcom/tnkfactory/ad/TnkAdTagLayout;
.super Ljava/lang/Object;


# instance fields
.field public bgTagCheck:I

.field public bgTagFree:I

.field public bgTagPaid:I

.field public bgTagWeb:I

.field public confirmLabelFormat:Ljava/lang/String;

.field public pointLabelFormat:Ljava/lang/String;

.field public pointUnitFormat:Ljava/lang/String;

.field public tcTagCheck:I

.field public tcTagFree:I

.field public tcTagPaid:I

.field public tcTagWeb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagFree:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagPaid:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagWeb:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagCheck:I

    const v0, -0xff4ccd

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagFree:I

    const v0, -0x37e00

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagPaid:I

    const v0, -0xee7c13

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagWeb:I

    const v0, -0x757576

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagCheck:I

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagFree:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagPaid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagWeb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagCheck:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagFree:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagPaid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagWeb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagCheck:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/high16 v0, -0x1000000

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagFree:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagPaid:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagWeb:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagCheck:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagPaid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagWeb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagCheck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagPaid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagWeb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->tcTagCheck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointLabelFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->pointUnitFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->confirmLabelFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagFree:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagPaid:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagWeb:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/tnkfactory/ad/TnkAdTagLayout;->bgTagCheck:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
