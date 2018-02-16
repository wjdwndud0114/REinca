.class Lcom/igaworks/IgawActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "IgawActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/IgawActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/igaworks/IgawActivityLifecycleCallbacks;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/IgawActivityLifecycleCallbacks;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    iput-object p2, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 55
    :try_start_0
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    .line 57
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 58
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    .line 59
    .local v4, "task":Landroid/app/ActivityManager$AppTask;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 60
    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "topActivity":Ljava/lang/String;
    iget-object v8, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IgawActivityLifecycleCallbacks onActivityPaused : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 62
    if-eqz v6, :cond_0

    const-string v8, "IabV3Activity"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    # getter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$000(Lcom/igaworks/IgawActivityLifecycleCallbacks;)Lcom/igaworks/impl/CommonFrameworkImpl;

    move-result-object v7

    if-nez v7, :cond_1

    .line 64
    iget-object v8, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkFactory;->getCommonFramework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v7

    check-cast v7, Lcom/igaworks/impl/CommonFrameworkImpl;

    # setter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v8, v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$002(Lcom/igaworks/IgawActivityLifecycleCallbacks;Lcom/igaworks/impl/CommonFrameworkImpl;)Lcom/igaworks/impl/CommonFrameworkImpl;

    .line 65
    :cond_1
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    # getter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$000(Lcom/igaworks/IgawActivityLifecycleCallbacks;)Lcom/igaworks/impl/CommonFrameworkImpl;

    move-result-object v7

    const-string v8, "IgawCommon"

    const-string v9, "openIabV3Activity"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10}, Lcom/igaworks/impl/CommonFrameworkImpl;->custom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "task":Landroid/app/ActivityManager$AppTask;
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    .end local v6    # "topActivity":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 71
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 72
    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_2

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 75
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_5

    .line 76
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .restart local v6    # "topActivity":Ljava/lang/String;
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->val$activity:Landroid/app/Activity;

    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IgawActivityLifecycleCallbacks onActivityPaused : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 78
    if-eqz v6, :cond_5

    const-string v7, "IabV3Activity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 79
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    # getter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$000(Lcom/igaworks/IgawActivityLifecycleCallbacks;)Lcom/igaworks/impl/CommonFrameworkImpl;

    move-result-object v7

    if-nez v7, :cond_4

    .line 80
    iget-object v8, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkFactory;->getCommonFramework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v7

    check-cast v7, Lcom/igaworks/impl/CommonFrameworkImpl;

    # setter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v8, v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$002(Lcom/igaworks/IgawActivityLifecycleCallbacks;Lcom/igaworks/impl/CommonFrameworkImpl;)Lcom/igaworks/impl/CommonFrameworkImpl;

    .line 81
    :cond_4
    iget-object v7, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;->this$0:Lcom/igaworks/IgawActivityLifecycleCallbacks;

    # getter for: Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;
    invoke-static {v7}, Lcom/igaworks/IgawActivityLifecycleCallbacks;->access$000(Lcom/igaworks/IgawActivityLifecycleCallbacks;)Lcom/igaworks/impl/CommonFrameworkImpl;

    move-result-object v7

    const-string v8, "IgawCommon"

    const-string v9, "openIabV3Activity"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10}, Lcom/igaworks/impl/CommonFrameworkImpl;->custom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 88
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "i":I
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topActivity":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "i":I
    .restart local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "i":I
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_3
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
