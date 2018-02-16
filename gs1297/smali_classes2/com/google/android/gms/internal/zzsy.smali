.class Lcom/google/android/gms/internal/zzsy;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final zzafu:Ljava/lang/String;


# instance fields
.field private final zzacN:Lcom/google/android/gms/internal/zzrw;

.field private zzafv:Z

.field private zzafw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzsy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzsy;->zzafu:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private zzlZ()Lcom/google/android/gms/internal/zzrs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    return-object v0
.end method

.method private zznr()Lcom/google/android/gms/internal/zzsx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    return-object v0
.end method

.method private zzpy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zznr()Lcom/google/android/gms/internal/zzsx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsx;->zzbR(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafv:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zzpy()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzsx;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsy;->zzpA()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrs;->zzV(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzsy;->zzafu:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrs;->zznn()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzsx;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsy;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsx;->zzbO(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsy;->zzafv:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzsx;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected zzpA()Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public zzpx()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->zzpy()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafv:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "com.google.analytics.RADIO_POWERED"

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsy;->zzpA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacN:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsy;->zzafw:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsy;->zzafv:Z

    goto :goto_0
.end method

.method public zzpz()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsy;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/internal/zzsy;->zzafu:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
