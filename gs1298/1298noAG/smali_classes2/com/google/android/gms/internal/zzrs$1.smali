.class Lcom/google/android/gms/internal/zzrs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->setLocalDispatchPeriod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacG:I

.field final synthetic zzacH:Lcom/google/android/gms/internal/zzrs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrs;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrs$1;->zzacH:Lcom/google/android/gms/internal/zzrs;

    iput p2, p0, Lcom/google/android/gms/internal/zzrs$1;->zzacG:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$1;->zzacH:Lcom/google/android/gms/internal/zzrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrs$1;->zzacG:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsc;->zzw(J)V

    return-void
.end method
