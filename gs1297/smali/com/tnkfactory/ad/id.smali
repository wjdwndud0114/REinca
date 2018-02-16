.class final Lcom/tnkfactory/ad/id;
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
.method public a(Landroid/os/Parcel;)Lcom/tnkfactory/ad/TnkAdVideoStyle;
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdVideoStyle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/tnkfactory/ad/TnkAdVideoStyle;
    .locals 1

    new-array v0, p1, [Lcom/tnkfactory/ad/TnkAdVideoStyle;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/id;->a(Landroid/os/Parcel;)Lcom/tnkfactory/ad/TnkAdVideoStyle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/id;->a(I)[Lcom/tnkfactory/ad/TnkAdVideoStyle;

    move-result-object v0

    return-object v0
.end method
