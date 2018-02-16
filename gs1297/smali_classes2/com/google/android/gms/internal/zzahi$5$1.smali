.class Lcom/google/android/gms/internal/zzahi$5$1;
.super Lcom/google/android/gms/internal/zzagh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahi$5;->zza(Lcom/google/android/gms/internal/zzahk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLo:Lcom/google/android/gms/internal/zzahj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahi$5;Lcom/google/android/gms/internal/zzahj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahi$5$1;->zzaLo:Lcom/google/android/gms/internal/zzahj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagh;-><init>()V

    return-void
.end method


# virtual methods
.method public zzav(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$5$1;->zzaLo:Lcom/google/android/gms/internal/zzahj;

    new-instance v1, Lcom/google/android/gms/common/api/BooleanResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzahj;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
