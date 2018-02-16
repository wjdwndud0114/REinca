.class public Lcom/google/android/gms/internal/zzavc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:[B

.field final versionCode:I

.field private final zzbwL:Lcom/google/android/gms/internal/zzauj;

.field private final zzbwO:Lcom/google/android/gms/internal/zzaup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzauj;[BLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavc;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzbwL:Lcom/google/android/gms/internal/zzauj;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavc;->data:[B

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzaup$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaup;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->data:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavd;->zza(Lcom/google/android/gms/internal/zzavc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzMM()Lcom/google/android/gms/internal/zzauj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzbwL:Lcom/google/android/gms/internal/zzauj;

    return-object v0
.end method
