.class public Lcom/google/android/gms/internal/zzamn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzVW:Ljava/lang/String;

.field final zzaPA:Z

.field final zzaPB:Ljava/lang/String;

.field final zzaPC:Lcom/google/android/gms/internal/zzamv;

.field final zzaPD:Lcom/google/android/gms/internal/zzamt;

.field final zzaPE:Lcom/google/android/gms/internal/zzamz;

.field final zzaPF:Lcom/google/android/gms/internal/zzanb;

.field final zzaPG:Lcom/google/android/gms/internal/zzand;

.field final zzaPH:Lcom/google/android/gms/internal/zzamx;

.field final zzaPI:Lcom/google/android/gms/internal/zzamr;

.field final zzaPJ:Lcom/google/android/gms/internal/zzaml;

.field final zzaPK:Lcom/google/android/gms/internal/zzamj;

.field final zzaPr:Ljava/lang/String;

.field final zzaPx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaPy:Z

.field final zzaPz:Z

.field final zzach:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzamv;Lcom/google/android/gms/internal/zzamt;Lcom/google/android/gms/internal/zzamz;Lcom/google/android/gms/internal/zzanb;Lcom/google/android/gms/internal/zzand;Lcom/google/android/gms/internal/zzamx;Lcom/google/android/gms/internal/zzamr;Lcom/google/android/gms/internal/zzaml;Lcom/google/android/gms/internal/zzamj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzamv;",
            "Lcom/google/android/gms/internal/zzamt;",
            "Lcom/google/android/gms/internal/zzamz;",
            "Lcom/google/android/gms/internal/zzanb;",
            "Lcom/google/android/gms/internal/zzand;",
            "Lcom/google/android/gms/internal/zzamx;",
            "Lcom/google/android/gms/internal/zzamr;",
            "Lcom/google/android/gms/internal/zzaml;",
            "Lcom/google/android/gms/internal/zzamj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamn;->zzVW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamn;->zzach:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzamn;->zzaPx:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzamn;->zzaPy:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzamn;->zzaPz:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzamn;->zzaPA:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzamn;->zzaPr:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzamn;->zzaPB:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzamn;->zzaPC:Lcom/google/android/gms/internal/zzamv;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzamn;->zzaPD:Lcom/google/android/gms/internal/zzamt;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzamn;->zzaPE:Lcom/google/android/gms/internal/zzamz;

    iput-object p13, p0, Lcom/google/android/gms/internal/zzamn;->zzaPF:Lcom/google/android/gms/internal/zzanb;

    iput-object p14, p0, Lcom/google/android/gms/internal/zzamn;->zzaPG:Lcom/google/android/gms/internal/zzand;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzaPH:Lcom/google/android/gms/internal/zzamx;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzaPI:Lcom/google/android/gms/internal/zzamr;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzaPJ:Lcom/google/android/gms/internal/zzaml;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->zzaPK:Lcom/google/android/gms/internal/zzamj;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzamo;->zza(Lcom/google/android/gms/internal/zzamn;Landroid/os/Parcel;I)V

    return-void
.end method
