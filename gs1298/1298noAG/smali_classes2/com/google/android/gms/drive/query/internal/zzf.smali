.class public Lcom/google/android/gms/drive/query/internal/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaNl:Ljava/lang/String;

.field final zzaOP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/zzf;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzf;->zzaNl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/query/internal/zzf;->zzaOP:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzf;-><init>(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "FieldWithSortOrder[%s %s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/gms/drive/query/internal/zzf;->zzaNl:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/query/internal/zzf;->zzaOP:Z

    if-eqz v0, :cond_0

    const-string v0, "ASC"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "DESC"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzg;->zza(Lcom/google/android/gms/drive/query/internal/zzf;Landroid/os/Parcel;I)V

    return-void
.end method
