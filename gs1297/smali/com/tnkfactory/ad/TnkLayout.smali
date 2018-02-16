.class public Lcom/tnkfactory/ad/TnkLayout;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static IMAGE_LANDSCAPE:I

.field public static IMAGE_NONE:I

.field public static IMAGE_PORTRAIT:I

.field public static IMAGE_SCREENSHOT:I


# instance fields
.field public adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tnkfactory/ad/TnkLayout;->IMAGE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/tnkfactory/ad/TnkLayout;->IMAGE_PORTRAIT:I

    const/4 v0, 0x2

    sput v0, Lcom/tnkfactory/ad/TnkLayout;->IMAGE_LANDSCAPE:I

    const/16 v0, 0x9

    sput v0, Lcom/tnkfactory/ad/TnkLayout;->IMAGE_SCREENSHOT:I

    new-instance v0, Lcom/tnkfactory/ad/ig;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ig;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdWallLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdWallLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdWallLayout;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdWallLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkAdWallLayout;->a(Landroid/os/Parcel;I)V

    return-void
.end method
