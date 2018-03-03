.class public Lcom/google/android/gms/drive/query/internal/zzd;
.super Lcom/google/android/gms/drive/query/internal/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaON:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private final zzaOO:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/zzd;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzaON:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/zzi;->zza(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzaOO:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzb(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/query/internal/zzd;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zze;->zza(Lcom/google/android/gms/drive/query/internal/zzd;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzd;->zzaOO:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/query/internal/zzj;->zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
