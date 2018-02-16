.class final Lcom/google/android/gms/games/appcontent/AppContentUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYH:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;->zzaYH:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;->zzaYH:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/games/appcontent/AppContentActionRef;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
