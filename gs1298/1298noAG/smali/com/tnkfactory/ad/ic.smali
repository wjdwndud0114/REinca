.class final Lcom/tnkfactory/ad/ic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tnkfactory/ad/TnkAdInterstitialStyle;
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/tnkfactory/ad/TnkAdInterstitialStyle;
    .locals 1

    new-array v0, p1, [Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ic;->a(Landroid/os/Parcel;)Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ic;->a(I)[Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    move-result-object v0

    return-object v0
.end method
