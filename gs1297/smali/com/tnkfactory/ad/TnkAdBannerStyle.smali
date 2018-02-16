.class public Lcom/tnkfactory/ad/TnkAdBannerStyle;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ib;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ib;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdBannerStyle;->a:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
