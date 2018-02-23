.class public Lcom/google/android/gms/nearby/messages/MessagesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzbxA:Ljava/lang/String;

.field public final zzbxx:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzbxy:Z

.field public final zzbxz:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbxx:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbxy:Z

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zza(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbxz:I

    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbxA:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;Lcom/google/android/gms/nearby/messages/MessagesOptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions;-><init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V

    return-void
.end method
