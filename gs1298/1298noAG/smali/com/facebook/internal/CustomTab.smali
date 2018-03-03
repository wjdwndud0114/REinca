.class public Lcom/facebook/internal/CustomTab;
.super Ljava/lang/Object;
.source "CustomTab.java"


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_0

    .line 36
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "parameters":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .restart local p2    # "parameters":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1, p2}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/CustomTab;->uri:Landroid/net/Uri;

    .line 42
    return-void
.end method


# virtual methods
.method public openCustomTab(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 46
    .local v0, "customTabsIntent":Landroid/support/customtabs/CustomTabsIntent;
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/facebook/internal/CustomTab;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 48
    return-void
.end method
