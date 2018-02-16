.class final Lcom/google/android/gms/internal/zzpi$zza;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzWW:Lcom/google/android/gms/internal/zzpi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpi$zza;->zzWW:Lcom/google/android/gms/internal/zzpi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpi;Lcom/google/android/gms/internal/zzpi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpi$zza;-><init>(Lcom/google/android/gms/internal/zzpi;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->zzWW:Lcom/google/android/gms/internal/zzpi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpi;->zza(Lcom/google/android/gms/internal/zzpi;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi$zza;->zzWW:Lcom/google/android/gms/internal/zzpi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpi;->zza(Lcom/google/android/gms/internal/zzpi;Z)Z

    goto :goto_0
.end method
