.class public Lcom/android/settings/GridSettings$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v1}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 10

    const/4 v8, 0x5

    const v7, 0x7f07005e

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;-><init>(Lcom/android/settings/GridSettings$ViewPagerAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v4, p2

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v5}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v5

    if-ne v5, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    packed-switch v4, :pswitch_data_0

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v5, p2, :cond_2

    invoke-virtual {v0, v3, v9}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;

    move-result-object v5

    aput-object v3, v5, p2

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v5, v2, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v5, :cond_1

    check-cast v2, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    :cond_1
    return-object v3

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1200(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;
    invoke-static {v5}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, v7, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;
    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;
    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v3, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
