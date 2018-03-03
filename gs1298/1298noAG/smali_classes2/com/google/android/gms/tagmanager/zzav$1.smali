.class Lcom/google/android/gms/tagmanager/zzav$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzav;->zzn(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbEq:Lcom/google/android/gms/tagmanager/zzau;

.field final synthetic zzbEr:J

.field final synthetic zzbEs:Lcom/google/android/gms/tagmanager/zzav;

.field final synthetic zzsk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzav;Lcom/google/android/gms/tagmanager/zzau;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEs:Lcom/google/android/gms/tagmanager/zzav;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEq:Lcom/google/android/gms/tagmanager/zzau;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEr:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzsk:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEs:Lcom/google/android/gms/tagmanager/zzav;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzav;->zza(Lcom/google/android/gms/tagmanager/zzav;)Lcom/google/android/gms/tagmanager/zzaw;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdc;->zzPT()Lcom/google/android/gms/tagmanager/zzdc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEs:Lcom/google/android/gms/tagmanager/zzav;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzav;->zzb(Lcom/google/android/gms/tagmanager/zzav;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEq:Lcom/google/android/gms/tagmanager/zzau;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdc;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzau;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEs:Lcom/google/android/gms/tagmanager/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdc;->zzPW()Lcom/google/android/gms/tagmanager/zzaw;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzav;->zza(Lcom/google/android/gms/tagmanager/zzav;Lcom/google/android/gms/tagmanager/zzaw;)Lcom/google/android/gms/tagmanager/zzaw;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEs:Lcom/google/android/gms/tagmanager/zzav;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzav;->zza(Lcom/google/android/gms/tagmanager/zzav;)Lcom/google/android/gms/tagmanager/zzaw;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzbEr:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzav$1;->zzsk:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzaw;->zzg(JLjava/lang/String;)V

    return-void
.end method
