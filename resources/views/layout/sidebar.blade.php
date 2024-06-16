        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            {{-- <a href="#" class="brand-link">
                <img src="{{ asset('img/logo1.jpg') }}" alt="Sibeka Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">Sibeka</span>
            </a> --}}

            {{-- Nama user yang login class="d-block"> --}}
            {{-- <a href="#" class="d-block">
                            @if (auth()->check())
                                {{ auth()->user()->nidn }}
                            @endif
                        </a> --}}
            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex align-items-center">
                    <div class="image">
                        @php
                            // public\storage\Image\default
                            $profilePicture = Auth::user()->image ?? 'Image/default';
                        @endphp
                        <img src="{{ asset('storage/' . $profilePicture) }}"
                            class="img-circle elevation-2 profile-user-img" alt="User Image"
                            style="width: 50px; height:50px">
                    </div>
                    <div class="info">
                        <a href="{{ route('profile.edit', ['id' => Auth::user()->id]) }}" class="d-flex">
                            @if (auth()->check())
                                @php
                                    $user = auth()->user();
                                    $dosen = $user->dosen;
                                    $level = $user->level;
                                @endphp
                                {{ $dosen ? $dosen->nama : 'NIDN tidak ditemukan' }} <br>
                                ( {{ $level->level }})
                            @endif
                        </a>
                    </div>
                </div>

                <!-- SidebarSearch Form -->
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                            aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class               with font-awesome or any other icon font library -->
                        @if (auth()->user()->id_level == 1)
                            {{-- @can('view dashboard admin')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.dashboard') }}"
                                    class="nav-link {{ request()->is('admin/dashboard*') ? 'active' : '' }}">
                                    <i class="nav-icon fas fa-home" aria-hidden="true"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}

                            <li class="nav-item">
                                <a href="{{ route('change-log.index') }}"
                                    class="nav-link {{ request()->is('change-lo*') ? 'active' : '' }}">
                                    <i class="nav-icon fa fa-history" aria-hidden="true"></i>
                                    <p>
                                        Change log
                                    </p>
                                </a>
                            </li>

                            {{-- @can('view data user')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.users') }}"
                                    class="nav-link {{ request()->is('admin/user*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-users"></i>
                                    <p>
                                        User
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}


                            {{-- /data master --}}
                            <li
                                class="nav-item {{ request()->is('admin/jurusan*') || request()->is('admin/prodi*') || request()->is('admin/dosen*') || request()->is('admin/kajur*') || request()->is('admin/kaprodi*') || request()->is('admin/kbk*') || request()->is('admin/dosenkbk*') || request()->is('admin/matakuliahkbk*') || request()->is('admin/tahun*') ? 'menu-open' : '' }}">
                                {{-- || request()->is('admin/tahun*') --}}
                                <a href="#"
                                    class="nav-link {{ request()->is('admin/jurusan*') || request()->is('admin/prodi*') || request()->is('admin/dosen*') || request()->is('admin/kajur*') || request()->is('admin/kaprodi*') || request()->is('admin/kbk*') || request()->is('admin/dosenkbk*') || request()->is('admin/matakuliahkbk*') || request()->is('admin/tahun*') ? 'active' : '' }}">
                                    {{-- || request()->is('admin/tahun*') --}}
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Data Master
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview" style="background-color: rgb(73, 74, 78)">
                                    <li class="nav-item">
                                        <a href="{{ route('admin.jurusan') }}"
                                            class="nav-link {{ request()->is('admin/jurusan*') ? 'active' : '' }}">
                                            <i class="nav-icon fa fa-building"></i>
                                            <p>
                                                Jurusan
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('admin.prodis') }}"
                                            class="nav-link {{ request()->is('admin/prodi*') ? 'active' : '' }}">
                                            <i class="nav-icon fa fa-building"></i>
                                            <p>
                                                Prodi
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('admin.dosens') }}"
                                            class="nav-link {{ request()->is('admin/dosen/*') ? 'active' : '' }} ">
                                            <i class="nav-icon fas fa-graduation-cap"></i>
                                            <p>
                                                Dosen
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('admin.kajur') }}"
                                            class="nav-link {{ request()->is('admin/kajur*') ? 'active' : '' }} ">
                                            <i class="nav-icon fas fa-user"></i>
                                            <p>
                                                Pimpinan Jurusan
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ route('admin.kaprodi') }}"
                                            class="nav-link {{ request()->is('admin/kaprodi*') ? 'active' : '' }} ">
                                            <i class="nav-icon fas fa-user"></i>
                                            <p>
                                                Pimpinan Prodi
                                            </p>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            {{-- /data master --}}

                            <li class="nav-item">
                                <a href="{{ route('admin.tahun') }}"
                                    class="nav-link {{ request()->is('admin/tahun*') ? 'active' : '' }}">
                                    <i class="nav-icon fas fa-calendar"></i>
                                    <p>
                                        Tahun Akademik
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data kurikulum')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.kurikulum') }}"
                                    class="nav-link {{ request()->is('admin/kurikulum*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-th"></i>
                                    <p>
                                        Kurikulum
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data matakuliah')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.matakuliah') }}"
                                    class="nav-link {{ request()->is('admin/matakuliah/*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-book"></i>
                                    <p>
                                        Matakuliah
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data dosen pengampu')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.pengampu') }}"
                                    class="nav-link {{ request()->is('admin/pengampu*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-book-reader"></i>
                                    <p>
                                        Dosen Pengampu
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data kbk')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.kbk') }}"
                                    class="nav-link {{ request()->is('admin/kbk*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-th"></i>
                                    <p>
                                        KBK
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data dosen kbk')
                             --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.dosenkbk') }}"
                                    class="nav-link {{ request()->is('admin/dosenkbk*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-th"></i>
                                    <p>
                                        Dosen KBK
                                    </p>
                                </a>
                            </li>
                            {{-- @endcan --}}
                            {{-- @can('view data matakuliah kbk')
                             --}}

                            {{-- @endcan --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.matakuliahkbk') }}"
                                    class="nav-link {{ request()->is('admin/matakuliahkbk/*') ? 'active' : '' }} ">
                                    <i class="nav-icon fa fa-th"></i>
                                    <p>
                                        Matakuliah KBK
                                    </p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{ route('admin.mahasiswa') }}"
                                    class="nav-link {{ request()->is('admin/mahasiswa*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Mahasiswa
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('admin.proposalta') }}"
                                    class="nav-link {{ request()->is('admin/proposalta*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Proposal TA
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.rps') }}"
                                    class="nav-link {{ request()->is('verifikasi/rps/data*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        RPS
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifrps') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifrp*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi RPS
                                    </p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{ route('verifikasi.soal') }}"
                                    class="nav-link {{ request()->is('verifikasi/soal*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Soal
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifsoal') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifsoal*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi Soal
                                    </p>
                                </a>
                            </li>
                        @elseif (auth()->user()->id_level == 2)
                            <li class="nav-item">
                                <a href="{{ route('pengurus.dashboard') }}" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifrps') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifrps*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi RPS
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifsoal') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifsoal*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi Soal
                                    </p>
                                </a>
                            </li>
                        @elseif (auth()->user()->id_level == 3)
                            <li class="nav-item">
                                <a href="{{ route('kaprodi.dashboard') }}" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifrps') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifrps*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi RPS
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.verifsoal') }}"
                                    class="nav-link {{ request()->is('verifikasi/verifsoal*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Verifikasi Soal
                                    </p>
                                </a>
                            </li>
                        @elseif (auth()->user()->id_level == 4)
                            <li class="nav-item">
                                <a href="{{ route('dosen.dashboard') }}" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.rps') }}"
                                    class="nav-link {{ request()->is('verifikasi/rps*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        RPS
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('verifikasi.soal') }}"
                                    class="nav-link {{ request()->is('verifikasi/soal*') ? 'active' : '' }} ">
                                    <i class="nav-icon fas fa-th"></i>
                                    <p>
                                        Soal
                                    </p>
                                </a>
                            </li>
                        @elseif (auth()->user()->id_level == 5)
                            <li class="nav-item">
                                <a href="{{ route('user.dashboard') }}" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                        @endif

                        <li class="nav-item {{ request()->is('profile/edit*') ? 'menu-open' : '' }}">
                            <a href="#" class="nav-link {{ request()->is('profile/edit*') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>
                                    Setting
                                </p>
                            </a>
                            <ul class="nav nav-treeview" style="background-color: rgb(73, 74, 78)">
                                <li class="nav-item">
                                    <a href="{{ route('profile.edit', ['id' => Auth::user()->id]) }}"
                                        class="nav-link">
                                        <i class="nav-icon fas fa-user"></i>
                                        <p>
                                            Edit Profile
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item danger">
                            <form action="/logout" method="post" style="color: darkslategray">
                                @csrf
                                <button id="logoutButton" class="nav-link" type="button" data-toggle="modal"
                                    data-target="#logoutModal">
                                    <p>Logout</p>
                                </button>
                            </form>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->

        </aside>
