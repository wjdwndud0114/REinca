.class public Lcom/google/android/gms/internal/zzave;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzave;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private final zzbwO:Lcom/google/android/gms/internal/zzaup;

.field private final zzbwR:B

.field private final zzbwS:Lcom/google/android/gms/internal/zzaur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzave;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IBLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzave;->versionCode:I

    iput-byte p2, p0, Lcom/google/android/gms/internal/zzave;->zzbwR:B

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaur$zza;->zzey(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaur;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwS:Lcom/google/android/gms/internal/zzaur;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzaup$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaup;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavf;->zza(Lcom/google/android/gms/internal/zzave;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzMP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwR:B

    return v0
.end method

.method public zzMS()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwS:Lcom/google/android/gms/internal/zzaur;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzbwS:Lcom/google/android/gms/internal/zzaur;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaur;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
