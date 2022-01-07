<?php $a = $this->db->query('SELECT count(id_sm) as jumlah FROM surat_masuk')->row_array();
				  $b = $this->db->query('SELECT count(id_sk) as jumlah FROM surat_keluar')->row_array();
                  $c = $this->db->query('SELECT count(id_admin) as jumlah FROM admin')->row_array();
                  $d = $this->db->query('SELECT count(id) as jumlah FROM disposisi')->row_array();
                  $jumlah = 0;
				  $jumlah += $a['jumlah'];
				  $jumlah1 = 0;
				  $jumlah1 += $b['jumlah'];
                  $jumlah2 = 0;
                  $jumlah2 += $c['jumlah'];
                  $jumlah3 = 0;
				  $jumlah3 += $d['jumlah'];
				?>
					
					<!-- /.row -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-user fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo $jumlah2 ?></div>
                                            <div>Admin</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo base_url()?>admin">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-send fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo $jumlah ?></div>
                                            <div>Surat Masuk</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo base_url()?>surat">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-send-o fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo $jumlah1 ?></div>
                                            <div>Surat Keluar</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo base_url()?>sk">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-envelope fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo $jumlah3 ?></div>
                                            <div>Disposisi</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo base_url()?>surat/diss">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Area Chart Example
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div id="morris-area-chart"></div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        </div